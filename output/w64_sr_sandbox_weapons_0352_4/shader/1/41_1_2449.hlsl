// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
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
  float4 cb0[141];
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
  out float4 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
  r1.x = (uint)r0.w;
  r1.x = t2.Load(r1.x).w;
  r2.xyzw = float4(1,2,3,4) + r0.wwww;
  r2.xyzw = (uint4)r2.xyzw;
  r3.xyzw = t2.Load(r2.x).xyzw;
  r1.y = t2.Load(r2.y).w;
  r4.xyzw = t2.Load(r2.z).xyzw;
  r1.zw = t2.Load(r2.w).zw;
  r2.xy = float2(5,6) + r0.ww;
  r2.xy = (uint2)r2.xy;
  r5.xyzw = t2.Load(r2.x).xyzw;
  r2.xy = t2.Load(r2.y).xy;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r6.xyz = cb1[1].xyz * r3.yyy;
  r6.xyz = cb1[0].xyz * r3.xxx + r6.xyz;
  r6.xyz = cb1[2].xyz * r3.zzz + r6.xyz;
  r6.xyz = cb1[3].xyz + r6.xyz;
  r0.w = cmp(1 < cb0[111].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[36].x + 1;
      r0.w = (uint)r0.w;
      r7.xyz = t2.Load(r0.w).xyz;
    } else {
      r0.w = cb0[111].x + -1;
      r0.x = r0.x + -r0.w;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r8.xyz = t2.Load(r0.x).xyz;
        r7.xyz = r3.xyz * float3(2,2,2) + -r8.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r7.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r7.xyz = float3(0,0,0);
  }
  r0.xyw = cb1[1].zxy * r7.yyy;
  r0.xyw = cb1[0].zxy * r7.xxx + r0.xyw;
  r0.xyw = cb1[2].zxy * r7.zzz + r0.xyw;
  r0.xyw = cb1[3].zxy + r0.xyw;
  r0.xyw = r0.xyw + -r6.zxy;
  r2.z = dot(r0.xyw, r0.xyw);
  r2.z = sqrt(r2.z);
  r2.z = cmp(9.99999975e-006 < r2.z);
  r0.xyw = r2.zzz ? r0.xyw : float3(0,1,0);
  r2.z = dot(r0.xyw, r0.xyw);
  r2.z = rsqrt(r2.z);
  r3.xyz = r2.zzz * r0.ywx;
  r7.xyz = cb12[7].xyz + -r6.xyz;
  r8.xyz = r7.yzx * r0.xyw;
  r0.xyw = r0.wxy * r7.zxy + -r8.xyz;
  r2.z = dot(r0.xyw, r0.xyw);
  r2.z = rsqrt(r2.z);
  r0.xyw = r2.zzz * r0.xyw;
  r0.xyw = r0.xyw * r5.zzz;
  r2.z = (int)r0.z;
  r2.z = cmp(r2.z < 0.5);
  r0.xyw = r2.zzz ? -r0.xyw : r0.xyw;
  r0.xyw = r6.xyz + r0.xyw;
  r2.z = dot(r3.xyz, r7.xyz);
  r6.xyz = -r2.zzz * r3.xyz + r7.xyz;
  r2.z = dot(r6.xyz, r6.xyz);
  r2.z = rsqrt(r2.z);
  o1.xyz = r6.xyz * r2.zzz;
  r2.z = dot(r7.xyz, r7.xyz);
  r2.z = rsqrt(r2.z);
  r6.xyz = r7.xyz * r2.zzz;
  r2.z = dot(r6.xyz, r3.xyz);
  r2.w = cb0[104].x * 0.0174532942;
  r2.w = cos(r2.w);
  r3.x = cb0[105].x + cb0[104].x;
  r3.x = 0.0174532942 * r3.x;
  r3.x = cos(r3.x);
  r2.z = abs(r2.z) + -r2.w;
  r2.w = r3.x + -r2.w;
  r2.z = saturate(r2.z / r2.w);
  o0.y = x0[r0.z+0].y;
  r6.xyzw = cb12[1].xyzw * r0.yyyy;
  r6.xyzw = cb12[0].xyzw * r0.xxxx + r6.xyzw;
  r6.xyzw = cb12[2].xyzw * r0.wwww + r6.xyzw;
  r6.xyzw = cb12[3].xyzw + r6.xyzw;
  r0.z = cb0[13].w * r2.z;
  r0.z = cb0[140].x * r0.z;
  r2.z = cmp(0.999000013 < r4.w);
  o0.z = r2.z ? 0 : r0.z;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  o0.x = r1.y;
  o0.w = r6.w;
  o3.xyz = r4.xyz;
  o3.w = r1.x;
  o4.x = r3.w;
  o4.yw = r1.zw;
  o4.z = 0;
  o5.xw = r5.xy;
  o5.yz = float2(0,0);
  o6.xy = r5.zw;
  o6.zw = r2.xy;
  o7.xyzw = r6.xyzw;
  return;
}