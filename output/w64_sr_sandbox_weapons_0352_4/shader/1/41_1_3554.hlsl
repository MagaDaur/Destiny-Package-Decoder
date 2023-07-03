// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:35 2023
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
  float4 cb0[135];
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
  out float4 o5 : TEXCOORD5,
  out float2 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
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
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(1,2,4,5) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r1.x = t2.Load(r1.x).w;
  r2.xyzw = t2.Load(r1.y).xyzw;
  r1.y = (uint)r0.w;
  o3.xyzw = t2.Load(r1.y).xyzw;
  r3.xyz = t2.Load(r1.z).xyw;
  r4.xyzw = t2.Load(r1.w).xyzw;
  r0.w = 6 + r0.w;
  r0.w = (uint)r0.w;
  r0.w = t2.Load(r0.w).x;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r1.yzw = cb1[1].xyz * r2.yyy;
  r1.yzw = cb1[0].xyz * r2.xxx + r1.yzw;
  r1.yzw = cb1[2].xyz * r2.zzz + r1.yzw;
  r1.yzw = cb1[3].xyz + r1.yzw;
  r3.w = cmp(1 < cb0[112].x);
  if (r3.w != 0) {
    r3.w = cmp((int)r0.y < 0);
    if (r3.w != 0) {
      r3.w = cb0[36].x + 2;
      r3.w = (uint)r3.w;
      r5.xyz = t2.Load(r3.w).xyz;
    } else {
      r3.w = cb0[112].x + -1;
      r0.x = -r3.w + r0.x;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 2 + r0.x;
        r0.x = (uint)r0.x;
        r6.xyz = t2.Load(r0.x).xyz;
        r5.xyz = r2.xyz * float3(2,2,2) + -r6.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 2 + r0.x;
        r0.x = (uint)r0.x;
        r5.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r5.xyz = float3(0,0,0);
  }
  r2.xyz = cb1[1].zxy * r5.yyy;
  r2.xyz = cb1[0].zxy * r5.xxx + r2.xyz;
  r2.xyz = cb1[2].zxy * r5.zzz + r2.xyz;
  r2.xyz = cb1[3].zxy + r2.xyz;
  r2.xyz = r2.xyz + -r1.wyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = cmp(9.99999975e-006 < r0.x);
  r2.xyz = r0.xxx ? r2.xyz : float3(0,1,0);
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r5.xyz = r2.yzx * r0.xxx;
  r6.xyz = cb12[7].xyz + -r1.yzw;
  r7.xyz = r6.yzx * r2.xyz;
  r2.xyz = r2.zxy * r6.zxy + -r7.xyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  r2.xyz = r2.xyz * r0.xxx;
  r2.xyz = r2.xyz * r4.yyy;
  r0.x = (int)r0.z;
  r0.x = cmp(r0.x < 0.5);
  r2.xyz = r0.xxx ? -r2.xyz : r2.xyz;
  r1.yzw = r2.xyz + r1.yzw;
  r0.x = dot(r5.xyz, r6.xyz);
  r2.xyz = -r0.xxx * r5.xyz + r6.xyz;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.x = rsqrt(r0.x);
  o1.xyz = r2.xyz * r0.xxx;
  r0.x = dot(r6.xyz, r6.xyz);
  r0.y = rsqrt(r0.x);
  r2.xyz = r6.xyz * r0.yyy;
  r0.y = dot(r2.xyz, r5.xyz);
  r2.x = cb0[105].x * 0.0174532942;
  r2.y = cb0[106].x + cb0[105].x;
  r2.y = 0.0174532942 * r2.y;
  r2.xy = cos(r2.xy);
  r0.y = -r2.x + abs(r0.y);
  r2.x = r2.y + -r2.x;
  r0.y = saturate(r0.y / r2.x);
  o0.y = x0[r0.z+0].y;
  r5.xyzw = cb12[1].xyzw * r1.zzzz;
  r5.xyzw = cb12[0].xyzw * r1.yyyy + r5.xyzw;
  r5.xyzw = cb12[2].xyzw * r1.wwww + r5.xyzw;
  r5.xyzw = cb12[3].xyzw + r5.xyzw;
  r0.x = sqrt(r0.x);
  r0.z = r0.x * 4 + -2;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.z, r0.x));
  r0.x = r0.x * r0.y;
  r0.x = cb0[134].x * r0.x;
  r0.y = cmp(0.999000013 < r2.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r1.yzw;
  o0.w = r5.w;
  o0.x = r1.x;
  o4.xyw = r3.xyz;
  o4.z = r1.x;
  o5.x = 0;
  o5.yzw = r4.xyz;
  o7.xyzw = r5.xyzw;
  o6.x = r4.w;
  o6.y = r0.w;
  return;
}