// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:00 2023
Buffer<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[118];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  uint v7 : SV_VERTEXID0,
  uint v8 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float3 o5 : TEXCOORD5,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  r0.x = (int)v7.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v7.x;
  r0.w = (int)r0.y * 7;
  r0.w = (int)r0.w;
  r0.w = cb0[28].x + r0.w;
  r1.xyz = float3(4,1,3) + r0.www;
  r1.xyz = (uint3)r1.xyz;
  r2.xyzw = t2.Load(r1.x).xyzw;
  r0.w = (uint)r0.w;
  r0.w = t2.Load(r0.w).w;
  r3.xyzw = t2.Load(r1.y).xyzw;
  r1.xyz = t2.Load(r1.z).xyz;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r4.xyz = cb1[1].xyz * r3.yyy;
  r4.xyz = cb1[0].xyz * r3.xxx + r4.xyz;
  r4.xyz = cb1[2].xyz * r3.zzz + r4.xyz;
  r4.xyz = cb1[3].xyz + r4.xyz;
  r1.w = cmp(1 < cb0[114].x);
  if (r1.w != 0) {
    r1.w = (int)r0.y + -2;
    r4.w = cmp((int)r1.w < 0);
    if (r4.w != 0) {
      r4.w = cb0[28].x + 1;
      r4.w = (uint)r4.w;
      r5.xyz = t2.Load(r4.w).xyz;
    } else {
      r1.w = (int)r1.w;
      r4.w = cb0[114].x + -1;
      r1.w = -r4.w + r1.w;
      r1.w = cmp(abs(r1.w) < 0.00100000005);
      if (r1.w != 0) {
        r1.w = (int)r0.y + -3;
        r1.w = (int)r1.w;
        r1.w = r1.w * cb0[29].x + cb0[28].x;
        r1.w = 1 + r1.w;
        r1.w = (uint)r1.w;
        r6.xyz = t2.Load(r1.w).xyz;
        r5.xyz = r3.xyz * float3(2,2,2) + -r6.xyz;
      } else {
        r1.w = (int)r0.y + -1;
        r1.w = (int)r1.w;
        r1.w = r1.w * cb0[29].x + cb0[28].x;
        r1.w = 1 + r1.w;
        r1.w = (uint)r1.w;
        r5.xyz = t2.Load(r1.w).xyz;
      }
    }
    r1.w = cmp((int)r0.y < 0);
    if (r1.w != 0) {
      r1.w = cb0[28].x + 1;
      r1.w = (uint)r1.w;
      r6.xyz = t2.Load(r1.w).xyz;
    } else {
      r1.w = cb0[114].x + -1;
      r0.x = -r1.w + r0.x;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[29].x + cb0[28].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r7.xyz = t2.Load(r0.x).xyz;
        r6.xyz = r3.xyz * float3(2,2,2) + -r7.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[29].x + cb0[28].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r6.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r5.xyz = float3(0,0,0);
    r6.xyz = float3(0,0,0);
  }
  r3.xyz = cb1[1].xyz * r5.yyy;
  r3.xyz = cb1[0].xyz * r5.xxx + r3.xyz;
  r3.xyz = cb1[2].xyz * r5.zzz + r3.xyz;
  r3.xyz = cb1[3].xyz + r3.xyz;
  r5.xyz = cb1[1].xyz * r6.yyy;
  r5.xyz = cb1[0].xyz * r6.xxx + r5.xyz;
  r5.xyz = cb1[2].xyz * r6.zzz + r5.xyz;
  r5.xyz = cb1[3].xyz + r5.xyz;
  r6.xyz = r5.xyz + r3.xyz;
  r6.xyz = float3(0.25,0.25,0.25) * r6.xyz;
  r6.xyz = r4.xyz * float3(0.5,0.5,0.5) + r6.xyz;
  r3.xyz = r6.xyz + -r3.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r3.xyz = r0.xxx ? r3.xyz : float3(1,0,0);
  r5.xyz = -r6.xyz + r5.xyz;
  r0.x = dot(r5.xyz, r5.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r5.xyz = r0.xxx ? r5.xyz : float3(1,0,0);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r0.y = dot(r5.xyz, r5.xyz);
  r0.y = rsqrt(r0.y);
  r5.xyz = r5.xyz * r0.yyy;
  r4.xyz = cb12[7].xyz + -r4.xyz;
  r3.xyz = r3.xyz * r0.xxx + r5.xyz;
  r3.xyz = float3(0.5,0.5,0.5) * r3.xyz;
  r0.xy = cos(r2.xy);
  r5.x = r0.x * r0.y;
  r0.x = sin(r2.x);
  r5.y = r0.x * r0.y;
  r5.z = sin(-r2.y);
  r0.x = dot(r3.xyz, r4.xyz);
  r3.xyz = -r0.xxx * r3.xyz + r4.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  o1.xyz = r3.xyz * r0.xxx;
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r0.x = r0.x ? -1 : 1;
  r3.xyz = r0.xxx * r5.xyz;
  r3.xyz = r3.xyz * r2.www + r6.xyz;
  o0.y = x0[r0.z+0].y;
  r5.xyzw = cb12[1].xyzw * r3.yyyy;
  r5.xyzw = cb12[0].xyzw * r3.xxxx + r5.xyzw;
  r5.xyzw = cb12[2].xyzw * r3.zzzz + r5.xyzw;
  r5.xyzw = cb12[3].xyzw + r5.xyzw;
  r0.x = dot(r4.xyz, r4.xyz);
  r0.x = sqrt(r0.x);
  r0.y = 0.280000001 * r2.z;
  r0.y = frac(r0.y);
  r0.z = cb0[98].x * r0.y;
  r0.z = -r0.z * cb0[108].x + cb0[108].y;
  r0.x = saturate(r0.x * cb0[108].x + r0.z);
  r0.y = cb0[104].x + -r0.y;
  r0.y = 1 + r0.y;
  r0.y = saturate(3.33333302 * r0.y);
  r0.x = r0.x * r0.y;
  r0.x = cb0[2].y * r0.x;
  r0.x = cb0[117].x * r0.x;
  r0.y = cmp(0.999000013 < r3.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r3.xyz;
  o0.w = r5.w;
  o0.x = r0.w;
  o3.xyz = r1.xyz;
  o3.w = r0.w;
  o4.xyzw = float4(0,0,0,0);
  o6.xyzw = r5.xyzw;
  o5.xy = float2(0,0);
  o5.z = r2.w;
  return;
}