// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:46 2023
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
  float4 cb0[133];
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
  float4 v7 : TEXCOORD7,
  uint v8 : SV_VERTEXID0,
  uint v9 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v8.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  r0.x = (int)v8.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.zw = (uint2)r0.yy << int2(1,3);
  r0.z = (int)-r0.z + (int)v8.x;
  r0.w = (int)r0.w;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(1,2,5,6) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.x = t2.Load(r1.x).w;
  r3.xyzw = t2.Load(r1.y).xyzw;
  o5.xyzw = t2.Load(r1.z).xyzw;
  r1.x = (uint)r0.w;
  o3.xyzw = t2.Load(r1.x).xyzw;
  r1.xyzw = t2.Load(r1.w).xyzw;
  r2.zw = float2(7,4) + r0.ww;
  r2.zw = (uint2)r2.zw;
  r4.xy = t2.Load(r2.z).xy;
  r5.xyz = t2.Load(r2.w).xyz;
  x0[0].y = 0;
  x0[1].y = 1;
  x0[2].y = 0;
  x0[3].y = 1;
  r6.xyz = cb1[1].xyz * r3.yyy;
  r6.xyz = cb1[0].xyz * r3.xxx + r6.xyz;
  r6.xyz = cb1[2].xyz * r3.zzz + r6.xyz;
  r6.xyz = cb1[3].xyz + r6.xyz;
  r0.w = cmp(1 < cb0[105].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[36].x + 2;
      r0.w = (uint)r0.w;
      r7.xyz = t2.Load(r0.w).xyz;
    } else {
      r0.w = cb0[105].x + -1;
      r0.x = r0.x + -r0.w;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 2 + r0.x;
        r0.x = (uint)r0.x;
        r8.xyz = t2.Load(r0.x).xyz;
        r7.xyz = r3.xyz * float3(2,2,2) + -r8.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 2 + r0.x;
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
  r0.xyw = r0.xyw * r1.zzz;
  r2.z = (int)r0.z;
  r2.z = cmp(r2.z < 0.5);
  r0.xyw = r2.zzz ? -r0.xyw : r0.xyw;
  r6.xyz = r6.xyz + r0.xyw;
  r2.z = dot(r3.xyz, r7.xyz);
  r8.xyz = -r2.zzz * r3.xyz + r7.xyz;
  r2.z = dot(r8.xyz, r8.xyz);
  r2.z = rsqrt(r2.z);
  r8.xyz = r8.xyz * r2.zzz;
  r2.z = dot(r7.xyz, r7.xyz);
  r2.z = rsqrt(r2.z);
  r7.xyz = r7.xyz * r2.zzz;
  r2.z = dot(r0.xyw, r0.xyw);
  r2.z = rsqrt(r2.z);
  r0.xyw = r0.xyw * r2.zzz + -r8.xyz;
  o1.xyz = r0.xyw * float3(0.850000024,0.850000024,0.850000024) + r8.xyz;
  r0.x = dot(r7.xyz, r3.xyz);
  r0.y = cb0[97].x * 0.0174532942;
  r0.w = cb0[98].x + cb0[97].x;
  r0.w = 0.0174532942 * r0.w;
  r0.yw = cos(r0.yw);
  r0.x = abs(r0.x) + -r0.y;
  r0.y = r0.w + -r0.y;
  r0.x = saturate(r0.x / r0.y);
  r2.y = x0[r0.z+0].y;
  o0.xy = float2(0.349999994,1) * r2.xy;
  r7.xyzw = cb12[1].xyzw * r6.yyyy;
  r7.xyzw = cb12[0].xyzw * r6.xxxx + r7.xyzw;
  r7.xyzw = cb12[2].xyzw * r6.zzzz + r7.xyzw;
  r7.xyzw = cb12[3].xyzw + r7.xyzw;
  r0.x = cb0[132].x * r0.x;
  r0.y = cmp(0.999000013 < r3.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r6.xyz;
  o0.w = r7.w;
  o4.xyz = r5.xyz;
  o4.w = r2.x;
  o6.x = 0;
  o6.yzw = r1.xyz;
  o8.xyzw = r7.xyzw;
  o7.x = r1.w;
  o7.yz = r4.xy;
  return;
}